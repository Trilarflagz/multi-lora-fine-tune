#!/bin/bash

declare -a test_case_yamls=(
    "demo/lora/lora_case_1.yaml"
    "demo/loraplus/loraplus_case_1.yaml"
    "demo/dpo/dpo_case_1.yaml"
    "demo/dpo/dpo_case_2.yaml"
    "demo/dpo/dpo_case_3.yaml"
    "demo/cpo/cpo_case_1.yaml"
)

set -x
for test_case in "${test_case_yamls[@]}"
do
    python mlora.py --base_model $1 --config ${test_case}
done