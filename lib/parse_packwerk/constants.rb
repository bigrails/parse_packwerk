# typed: strict

module ParsePackwerk
  ROOT_PACKAGE_NAME = T.let('.'.freeze, String)
  PACKAGE_YML_NAME = T.let('package.yml'.freeze, String)
  PACKWERK_YML_NAME = T.let('packwerk.yml'.freeze, String)
  DEPRECATED_REFERENCES_YML_NAME = T.let('deprecated_references.yml'.freeze, String)
  ENFORCE_DEPENDENCIES = T.let('enforce_dependencies'.freeze, String)
  ENFORCE_PRIVACY = T.let('enforce_privacy'.freeze, String)
  METADATA = T.let('metadata'.freeze, String)
  DEPENDENCIES = T.let('dependencies'.freeze, String)

  # Since this metadata is unstructured YAML, it could be any type. We leave it to clients of `ParsePackwerk::Package`
  # to add types based on their known usage of metadata.
  MetadataYmlType = T.type_alias do
    T::Hash[T.untyped, T.untyped]
  end

  DEFAULT_EXCLUDE_GLOBS = T.let(["{bin,node_modules,script,tmp,vendor}/**/*"], T::Array[String])
  DEFAULT_PACKAGE_PATHS = T.let(['**/'], T::Array[String])
end
