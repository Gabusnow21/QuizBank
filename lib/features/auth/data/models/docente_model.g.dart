// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docente_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDocenteModelCollection on Isar {
  IsarCollection<DocenteModel> get docenteModels => this.collection();
}

const DocenteModelSchema = CollectionSchema(
  name: r'DocenteModel',
  id: -352810068394773643,
  properties: {
    r'correo': PropertySchema(
      id: 0,
      name: r'correo',
      type: IsarType.string,
    ),
    r'fechaRegistro': PropertySchema(
      id: 1,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'institucion': PropertySchema(
      id: 2,
      name: r'institucion',
      type: IsarType.string,
    ),
    r'nombre': PropertySchema(
      id: 3,
      name: r'nombre',
      type: IsarType.string,
    )
  },
  estimateSize: _docenteModelEstimateSize,
  serialize: _docenteModelSerialize,
  deserialize: _docenteModelDeserialize,
  deserializeProp: _docenteModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'correo': IndexSchema(
      id: -6928770995677321851,
      name: r'correo',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'correo',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _docenteModelGetId,
  getLinks: _docenteModelGetLinks,
  attach: _docenteModelAttach,
  version: '3.1.0+1',
);

int _docenteModelEstimateSize(
  DocenteModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.correo.length * 3;
  bytesCount += 3 + object.institucion.length * 3;
  bytesCount += 3 + object.nombre.length * 3;
  return bytesCount;
}

void _docenteModelSerialize(
  DocenteModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.correo);
  writer.writeDateTime(offsets[1], object.fechaRegistro);
  writer.writeString(offsets[2], object.institucion);
  writer.writeString(offsets[3], object.nombre);
}

DocenteModel _docenteModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DocenteModel();
  object.correo = reader.readString(offsets[0]);
  object.fechaRegistro = reader.readDateTime(offsets[1]);
  object.id = id;
  object.institucion = reader.readString(offsets[2]);
  object.nombre = reader.readString(offsets[3]);
  return object;
}

P _docenteModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _docenteModelGetId(DocenteModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _docenteModelGetLinks(DocenteModel object) {
  return [];
}

void _docenteModelAttach(
    IsarCollection<dynamic> col, Id id, DocenteModel object) {
  object.id = id;
}

extension DocenteModelByIndex on IsarCollection<DocenteModel> {
  Future<DocenteModel?> getByCorreo(String correo) {
    return getByIndex(r'correo', [correo]);
  }

  DocenteModel? getByCorreoSync(String correo) {
    return getByIndexSync(r'correo', [correo]);
  }

  Future<bool> deleteByCorreo(String correo) {
    return deleteByIndex(r'correo', [correo]);
  }

  bool deleteByCorreoSync(String correo) {
    return deleteByIndexSync(r'correo', [correo]);
  }

  Future<List<DocenteModel?>> getAllByCorreo(List<String> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return getAllByIndex(r'correo', values);
  }

  List<DocenteModel?> getAllByCorreoSync(List<String> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'correo', values);
  }

  Future<int> deleteAllByCorreo(List<String> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'correo', values);
  }

  int deleteAllByCorreoSync(List<String> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'correo', values);
  }

  Future<Id> putByCorreo(DocenteModel object) {
    return putByIndex(r'correo', object);
  }

  Id putByCorreoSync(DocenteModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'correo', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCorreo(List<DocenteModel> objects) {
    return putAllByIndex(r'correo', objects);
  }

  List<Id> putAllByCorreoSync(List<DocenteModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'correo', objects, saveLinks: saveLinks);
  }
}

extension DocenteModelQueryWhereSort
    on QueryBuilder<DocenteModel, DocenteModel, QWhere> {
  QueryBuilder<DocenteModel, DocenteModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DocenteModelQueryWhere
    on QueryBuilder<DocenteModel, DocenteModel, QWhereClause> {
  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> correoEqualTo(
      String correo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'correo',
        value: [correo],
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterWhereClause> correoNotEqualTo(
      String correo) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [],
              upper: [correo],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [correo],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [correo],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [],
              upper: [correo],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DocenteModelQueryFilter
    on QueryBuilder<DocenteModel, DocenteModel, QFilterCondition> {
  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> correoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> correoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> correoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correo',
        value: '',
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      correoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correo',
        value: '',
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      fechaRegistroEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      fechaRegistroGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      fechaRegistroLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      fechaRegistroBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaRegistro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institucion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'institucion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'institucion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'institucion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'institucion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'institucion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'institucion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'institucion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institucion',
        value: '',
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      institucionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'institucion',
        value: '',
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> nombreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> nombreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition> nombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }
}

extension DocenteModelQueryObject
    on QueryBuilder<DocenteModel, DocenteModel, QFilterCondition> {}

extension DocenteModelQueryLinks
    on QueryBuilder<DocenteModel, DocenteModel, QFilterCondition> {}

extension DocenteModelQuerySortBy
    on QueryBuilder<DocenteModel, DocenteModel, QSortBy> {
  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> sortByCorreo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> sortByCorreoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy>
      sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> sortByInstitucion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institucion', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy>
      sortByInstitucionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institucion', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }
}

extension DocenteModelQuerySortThenBy
    on QueryBuilder<DocenteModel, DocenteModel, QSortThenBy> {
  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByCorreo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByCorreoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy>
      thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByInstitucion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institucion', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy>
      thenByInstitucionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institucion', Sort.desc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QAfterSortBy> thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }
}

extension DocenteModelQueryWhereDistinct
    on QueryBuilder<DocenteModel, DocenteModel, QDistinct> {
  QueryBuilder<DocenteModel, DocenteModel, QDistinct> distinctByCorreo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QDistinct>
      distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QDistinct> distinctByInstitucion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'institucion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DocenteModel, DocenteModel, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }
}

extension DocenteModelQueryProperty
    on QueryBuilder<DocenteModel, DocenteModel, QQueryProperty> {
  QueryBuilder<DocenteModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DocenteModel, String, QQueryOperations> correoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correo');
    });
  }

  QueryBuilder<DocenteModel, DateTime, QQueryOperations>
      fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<DocenteModel, String, QQueryOperations> institucionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'institucion');
    });
  }

  QueryBuilder<DocenteModel, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }
}
