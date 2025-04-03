export interface Title {
    name: string,
    engName: string,
    src: string,
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