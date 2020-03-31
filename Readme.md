# Compiler used
`
  "devDependencies": {
    "ocaml": "4.7.1004",
  },
  "resolutions": {
    "ocaml": "github:EduardoRFS/ocaml:package.json#594b838eb90f3b7ed02cd7d0112ce0f52efe95e3"
  }
`

## merlin+ppx_tools
Logs: erro-combinado-merlin-ppx_tools.logs
Config: 
`
  "devDependencies": {
    "ocaml": "4.7.1004",
    "@opam/merlin": "*",
    "@opam/ppx_tools": "*"
  },
`

## merlin
Logs: logs/erro-com-merlin-apenas.logs
Config: 
`
  "devDependencies": {
    "ocaml": "4.7.1004",
    "@opam/merlin": "*"
  },
  "resolutions": {
    "ocaml": "github:EduardoRFS/ocaml:package.json#594b838eb90f3b7ed02cd7d0112ce0f52efe95e3"
  }
`

## ppx_tools
Logs: logs/erro-com-merlin-apenas.logs
Config: 
`
  "devDependencies": {
    "ocaml": "4.7.1004",
    "@opam/ppx_tools": "5.1+4.06.0"
  },
`


## Working workaround for merlin+ppx_tools
Config:
`
"devDependencies": {
  "@opam/ppx_tools": "5.1+4.06.0"
  "@opam/merlin": "3.3.0"
},
`