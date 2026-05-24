// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pregunta_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPreguntaModelCollection on Isar {
  IsarCollection<PreguntaModel> get preguntaModels => this.collection();
}

const PreguntaModelSchema = CollectionSchema(
  name: r'PreguntaModel',
  id: 1677135819875788420,
  properties: {
    r'enunciado': PropertySchema(
      id: 0,
      name: r'enunciado',
      type: IsarType.string,
    ),
    r'fechaCreacion': PropertySchema(
      id: 1,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'justificacion': PropertySchema(
      id: 2,
      name: r'justificacion',
      type: IsarType.string,
    ),
    r'nivel': PropertySchema(
      id: 3,
      name: r'nivel',
      type: IsarType.string,
    ),
    r'opciones': PropertySchema(
      id: 4,
      name: r'opciones',
      type: IsarType.stringList,
    ),
    r'respuestaCorrecta': PropertySchema(
      id: 5,
      name: r'respuestaCorrecta',
      type: IsarType.string,
    )
  },
  estimateSize: _preguntaModelEstimateSize,
  serialize: _preguntaModelSerialize,
  deserialize: _preguntaModelDeserialize,
  deserializeProp: _preguntaModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _preguntaModelGetId,
  getLinks: _preguntaModelGetLinks,
  attach: _preguntaModelAttach,
  version: '3.1.0+1',
);

int _preguntaModelEstimateSize(
  PreguntaModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.enunciado.length * 3;
  bytesCount += 3 + object.justificacion.length * 3;
  bytesCount += 3 + object.nivel.length * 3;
  bytesCount += 3 + object.opciones.length * 3;
  {
    for (var i = 0; i < object.opciones.length; i++) {
      final value = object.opciones[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.respuestaCorrecta.length * 3;
  return bytesCount;
}

void _preguntaModelSerialize(
  PreguntaModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.enunciado);
  writer.writeDateTime(offsets[1], object.fechaCreacion);
  writer.writeString(offsets[2], object.justificacion);
  writer.writeString(offsets[3], object.nivel);
  writer.writeStringList(offsets[4], object.opciones);
  writer.writeString(offsets[5], object.respuestaCorrecta);
}

PreguntaModel _preguntaModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PreguntaModel();
  object.enunciado = reader.readString(offsets[0]);
  object.fechaCreacion = reader.readDateTime(offsets[1]);
  object.id = id;
  object.justificacion = reader.readString(offsets[2]);
  object.nivel = reader.readString(offsets[3]);
  object.opciones = reader.readStringList(offsets[4]) ?? [];
  object.respuestaCorrecta = reader.readString(offsets[5]);
  return object;
}

P _preguntaModelDeserializeProp<P>(
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
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _preguntaModelGetId(PreguntaModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _preguntaModelGetLinks(PreguntaModel object) {
  return [];
}

void _preguntaModelAttach(
    IsarCollection<dynamic> col, Id id, PreguntaModel object) {
  object.id = id;
}

extension PreguntaModelQueryWhereSort
    on QueryBuilder<PreguntaModel, PreguntaModel, QWhere> {
  QueryBuilder<PreguntaModel, PreguntaModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PreguntaModelQueryWhere
    on QueryBuilder<PreguntaModel, PreguntaModel, QWhereClause> {
  QueryBuilder<PreguntaModel, PreguntaModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterWhereClause> idBetween(
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
}

extension PreguntaModelQueryFilter
    on QueryBuilder<PreguntaModel, PreguntaModel, QFilterCondition> {
  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enunciado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'enunciado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'enunciado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'enunciado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'enunciado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'enunciado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'enunciado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'enunciado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enunciado',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      enunciadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enunciado',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      fechaCreacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      fechaCreacionGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      fechaCreacionLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      fechaCreacionBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'justificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'justificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'justificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'justificacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'justificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'justificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'justificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'justificacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'justificacion',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      justificacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'justificacion',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nivel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nivel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nivel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nivel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nivel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nivel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nivel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nivel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nivel',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      nivelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nivel',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'opciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'opciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'opciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'opciones',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'opciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'opciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'opciones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'opciones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'opciones',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'opciones',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'opciones',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'opciones',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'opciones',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'opciones',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'opciones',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      opcionesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'opciones',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'respuestaCorrecta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'respuestaCorrecta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'respuestaCorrecta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'respuestaCorrecta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'respuestaCorrecta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'respuestaCorrecta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'respuestaCorrecta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'respuestaCorrecta',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'respuestaCorrecta',
        value: '',
      ));
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterFilterCondition>
      respuestaCorrectaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'respuestaCorrecta',
        value: '',
      ));
    });
  }
}

extension PreguntaModelQueryObject
    on QueryBuilder<PreguntaModel, PreguntaModel, QFilterCondition> {}

extension PreguntaModelQueryLinks
    on QueryBuilder<PreguntaModel, PreguntaModel, QFilterCondition> {}

extension PreguntaModelQuerySortBy
    on QueryBuilder<PreguntaModel, PreguntaModel, QSortBy> {
  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> sortByEnunciado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enunciado', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByEnunciadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enunciado', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByJustificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'justificacion', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByJustificacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'justificacion', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> sortByNivel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nivel', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> sortByNivelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nivel', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByRespuestaCorrecta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'respuestaCorrecta', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      sortByRespuestaCorrectaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'respuestaCorrecta', Sort.desc);
    });
  }
}

extension PreguntaModelQuerySortThenBy
    on QueryBuilder<PreguntaModel, PreguntaModel, QSortThenBy> {
  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> thenByEnunciado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enunciado', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByEnunciadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enunciado', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByJustificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'justificacion', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByJustificacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'justificacion', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> thenByNivel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nivel', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy> thenByNivelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nivel', Sort.desc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByRespuestaCorrecta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'respuestaCorrecta', Sort.asc);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QAfterSortBy>
      thenByRespuestaCorrectaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'respuestaCorrecta', Sort.desc);
    });
  }
}

extension PreguntaModelQueryWhereDistinct
    on QueryBuilder<PreguntaModel, PreguntaModel, QDistinct> {
  QueryBuilder<PreguntaModel, PreguntaModel, QDistinct> distinctByEnunciado(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enunciado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QDistinct>
      distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QDistinct> distinctByJustificacion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'justificacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QDistinct> distinctByNivel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nivel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QDistinct> distinctByOpciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'opciones');
    });
  }

  QueryBuilder<PreguntaModel, PreguntaModel, QDistinct>
      distinctByRespuestaCorrecta({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'respuestaCorrecta',
          caseSensitive: caseSensitive);
    });
  }
}

extension PreguntaModelQueryProperty
    on QueryBuilder<PreguntaModel, PreguntaModel, QQueryProperty> {
  QueryBuilder<PreguntaModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PreguntaModel, String, QQueryOperations> enunciadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enunciado');
    });
  }

  QueryBuilder<PreguntaModel, DateTime, QQueryOperations>
      fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<PreguntaModel, String, QQueryOperations>
      justificacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'justificacion');
    });
  }

  QueryBuilder<PreguntaModel, String, QQueryOperations> nivelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nivel');
    });
  }

  QueryBuilder<PreguntaModel, List<String>, QQueryOperations>
      opcionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'opciones');
    });
  }

  QueryBuilder<PreguntaModel, String, QQueryOperations>
      respuestaCorrectaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'respuestaCorrecta');
    });
  }
}
