# Tables

Use the following syntax to create tables:

```md
| Index | Name |
| ----- | ---- |
| 0     | AAA  |
| 1     | BBB  |
| 2     | CCC  |

Table: A short description of the table.\label{unique_table_id}
```

Note the inclusion of the LaTeX label at the end of the caption. This allows you to cross-reference the table from other parts of your content:

```md
Please see Table /ref{unique_table_id}.
```
