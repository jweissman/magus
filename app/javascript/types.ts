type MuMessage = {
  content: string,
  user: MuUser,
  date: Date
}

type MuColor
  = 'red'
  | 'green'
  | 'blue'
  | 'yellow'
  | 'purple'
  | 'cyan'
  | 'magenta'

type MuEntity = {
  name?: string,
  color?: MuColor,
  about?: string
}

type MuUser = MuEntity & {
  image_url: string
}

type MuStream = MuEntity & {
  user: MuUser,
  messages: MuMessage[]
}

type MuFrame = MuEntity & {
  user: MuUser,
  streams: MuStream[],
  children: MuFrame,
}

type MuSpace = MuEntity & {
  user: MuUser,
  frames: MuFrame[]
}

export {
  MuUser,
  MuStream,
  MuMessage,
  MuFrame,
  MuSpace,
}
