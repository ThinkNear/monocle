// Copyright (C) 2021 Monocle authors
// SPDX-License-Identifier: AGPL-3.0-or-later
//
// The most active authors view component
//

open Prelude

module TopTermsTable = {
  @react.component
  let make = (~store: Store.t, ~terms: list<SearchTypes.term_count>) => {
    let (rows, setRows) = React.useState(_ => [])
    let (sortBy, setSortBy) = React.useState(_ => {index: 1, direction: #asc})

    let columns = [
      {title: "Name", transforms: [sortable]},
      {title: "Count", transforms: [sortable]},
    ]
    let isOrdered = (first: SearchTypes.term_count, second: SearchTypes.term_count, index) =>
      switch index {
      | 0 => first.term < second.term
      | 1 => first.count < second.count
      | _ => false
      }
    let formatters: list<SearchTypes.term_count => React.element> = list{
      item => item.term->str,
      item => item.count->int32_str->str,
    }

    let doSort = rows => rows->sortRows(isOrdered)
    let onSort = (_, index, direction) => {
      setRows(_ => doSort(rows, index, direction))
      setSortBy(_ => {index: index, direction: direction})
    }

    React.useEffect1(() => {
      setRows(_ => terms->mkRows(formatters)->doSort(sortBy.index, sortBy.direction))
      None
    }, [terms])
    <Table caption="Top terms" rows cells=columns sortBy onSort>
      <TableHeader /> <TableBody />
    </Table>
  }
}

@react.component
let make = (~store: Store.t) => {
  let (state, _) = store
  let index = state.index
  let request = {
    SearchTypes.index: index,
    query: state.query,
    username: "",
    query_type: SearchTypes.Query_top_authors_changes_created,
    // order and limit are not handled server side
    order: None,
    limit: 10->Int32.of_int,
  }
  <div>
    {switch useAutoGetOn(() => WebApi.Search.query(request), state.query) {
    | None => <Spinner />
    | Some(Error(title)) => <Alert variant=#Danger title />
    | Some(Ok(SearchTypes.Error(err))) =>
      <Alert
        title={err.message ++ " at " ++ string_of_int(Int32.to_int(err.position))} variant=#Danger
      />
    | Some(Ok(SearchTypes.Top_authors(tsc))) =>
      <MCenteredContent>
        <Card isCompact=true>
          <CardTitle> {"Most active authors - Changes Created"->str} </CardTitle>
          <CardBody> <TopTermsTable store terms=tsc.termcount /> </CardBody>
        </Card>
      </MCenteredContent>
    | Some(Ok(_)) => React.null
    }}
  </div>
}
let default = make
