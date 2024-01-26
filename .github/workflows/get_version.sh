pip install rdflib
ONTO_VERSION = $(python .github/workflows/get_version.py ${{ inputs.ontology-file-path }})
if [-z "$ONTO_VERSION"]; then
    echo "No version found"
    exit 1
else
    echo "Found version: $ONTO_VERSION, write to GITHUB_ENV"
    echo $ONTO_VERSION >> "$GITHUB_ENV"
fi
exit 0
