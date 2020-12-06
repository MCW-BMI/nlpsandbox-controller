#!/usr/bin/env cwl-runner
#
# Run Docker Submission
#
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [community,  get-annotation-store]

hints:
  DockerRequirement:
    dockerPull: nlpsandbox/cli:edge

requirements:
  - class: InlineJavascriptRequirement

inputs:
  - id: data_endpoint
    type: string?
    inputBinding:
      prefix: --data_node_host
  - id: dataset_id
    type: string
    inputBinding:
      prefix: --dataset_id
  - id: annotation_store_id
    type: int  # This is only int because submission id is int
    inputBinding:
      prefix: --annotation_store_id
  - id: create_if_missing
    type: boolean?
    inputBinding:
      prefix: --create_if_missing

outputs:
  finished:
    type: boolean
    outputBinding:
      outputEval: $( true )