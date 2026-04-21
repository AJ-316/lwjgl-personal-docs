@echo off
echo Generating pipeline_data.js from pipeline.json...

python -c "import json; d=json.load(open('pipeline.json', encoding='utf-8')); open('pipeline_data.js','w', encoding='utf-8').write('const PIPELINE_DATA = '+json.dumps(d,separators=(',',':'))+';')"

if %errorlevel% == 0 (
    echo Done! pipeline_data.js updated successfully.
) else (
    echo ERROR: Failed to process pipeline.json. Check if the file is valid UTF-8 JSON.
)

pause