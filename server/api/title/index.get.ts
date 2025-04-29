import prisma from '../prismaConfig';

const validate = (value: string): boolean => {
  // return !!value.match('^[0-9]+$');
  return !!/^\d+$/.test(value);
};

export default defineEventHandler(async (event) => {
  const query = getQuery(event);
  const id = String(query.id);
  // console.log(query.id);
  console.log(id, validate(id))
  if (validate(id)) {
    const title = await prisma.title.findUnique({ where: { id: Number(id) } });
    console.log(title)
    return title;
  }
  return {};
});