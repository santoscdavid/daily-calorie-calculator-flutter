abstract class Mapper<M, D> {
  M toModel(D dto);
  D toDto(M model);

  List<M> toModelList(List<D> dtos) => List.of(dtos.map((e) => toModel(e)));
  List<D> toDtoList(List<M> models) => List.of(models.map((e) => toDto(e)));
}
