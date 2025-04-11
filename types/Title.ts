export interface Title {
  id: number,
  name: string,
  engName: string,
  image: string, // TODO: ?понять как картинки хранить и отдавать
  information: {
    type: string,
    volume: number, // Число томов
    chapters: number, // число глав
    status: string,
    genres: string,
    theme: string,
    license?: string,
    altName?: string,
  },
  description?: string,
  publisher?: string,
  review: number, // Рейтинг тайтла
  related?: string, // Подумать как сделать
  authors?: string,
};