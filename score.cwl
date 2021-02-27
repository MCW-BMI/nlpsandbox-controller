#!/usr/bin/env cwl-runner
#
# Example score submission file
#
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [evaluate, prediction]

hints:
  DockerRequirement:
    dockerPull: nlpsandbox/cli:0.4.1

inputs:

  - id: pred_filepath
    type: File
    inputBinding:
      prefix: --pred_filepath

  - id: gold_filepath
    type: File
    inputBinding:
      prefix: --gold_filepath

  - id: output
    type: string
    inputBinding:
      prefix: --output

  - id: eval_type
    type: string
    inputBinding:
      prefix: --eval_type

outputs:
  - id: results
    type: File
    outputBinding:
      glob: $(inputs.output)
