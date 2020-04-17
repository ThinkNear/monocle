import React from 'react'
import { Link } from 'react-router-dom'

import Row from 'react-bootstrap/Row'
import Col from 'react-bootstrap/Col'
import Card from 'react-bootstrap/Card'
import PropTypes from 'prop-types'

function changeUrl (index, x, name = null) {
  if (!name) {
    name = x.change_id
  }
  return <Link to={`/${index}/change/${x.change_id}${window.location.search}`}>{name}</Link>
}

function addUrlField (field, value) {
  var url = new URL(window.location.href)

  url.searchParams.set(field, value)

  return '/r' + url.pathname + url.search
}

function newRelativeUrl (dest) {
  var url = new URL(window.location.href)

  url.pathname += dest
  return url.search ? url.pathname + url.search : url.pathname
}

function addS (count, s = 's') {
  if (count > 1) {
    return s
  } else {
    return ''
  }
}

class LoadingBox extends React.Component {
  render () {
    return (
      <Row>
        <Col>
          <Card>
            <Card.Body>
              <h1>
                loading
              </h1>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    )
  }
}

class ErrorBox extends React.Component {
  render () {
    return (
      <Row>
        <Col>
          <Card>
            <Card.Body>
              <h1>
                Error: code: {this.props.error.status},
                message: {this.props.error.data}
              </h1>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    )
  }
}

ErrorBox.propTypes = {
  error: PropTypes.shape({
    status: PropTypes.number.isRequired,
    data: PropTypes.string.isRequired
  })
}

class BaseQueryComponent extends React.Component {
  constructor (props) {
    super(props)
    this.state = {
      name: null, // must be set by sub-class
      graph_type: null, // must be set by sub-class
      pageSize: 10,
      selectedPage: 0
    }
    this.handlePageChange.bind(this)
    this.queryBackend.bind(this)
  }

  componentDidMount () {
    this.queryBackend(this.state.selectedPage)
  }

  handlePageChange (obj, pageData) {
    obj.setState({ selectedPage: pageData.selected })
    obj.queryBackend(pageData.selected)
  }

  queryBackend (start = 0) {
    const params = (new URL(window.location.href)).searchParams
    this.props.handleQuery({
      index: this.props.index,
      name: this.state.name,
      repository: params.get('repository') || '.*',
      gte: params.get('gte'),
      lte: params.get('lte'),
      interval: params.get('interval') || '1M',
      excludeAuthors: params.get('exclude_authors'),
      authors: params.get('authors'),
      graph_type: this.state.graph_type,
      from: start * this.state.pageSize,
      size: this.state.pageSize,
      changeIds: this.props.changeIds
    })
  }
}

BaseQueryComponent.propTypes = {
  index: PropTypes.string.isRequired,
  filter_repository: PropTypes.string,
  filter_gte: PropTypes.string,
  filter_lte: PropTypes.string,
  filter_interval: PropTypes.string,
  filter_authors: PropTypes.string,
  filter_exclude_authors: PropTypes.string,
  filter_loaded_from_url: PropTypes.bool,
  handleQuery: PropTypes.func.isRequired,
  changeIds: PropTypes.array
}

export {
  LoadingBox,
  ErrorBox,
  BaseQueryComponent,
  changeUrl,
  addUrlField,
  newRelativeUrl,
  addS
}
