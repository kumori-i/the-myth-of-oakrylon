
Map = Class {}
function Map:init()
-- calling tiles for cave
--I am not good at art so i had to call older tiles in variable for a cave tile
  CAVE = {
    --[[1st]]GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS,GRASS

  }
-- the starting creation of the overworld map

  MAP = {1, 1, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 2, 4, 174, 175, 4, 4, 4, 40, 41, 4, 4, 174, 175, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 2, 176, 171, 173, 177, 4, 36, 38, 39, 37, 176, 171, 173, 177, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 10, 10, 10, 10, 10, 10, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
  1, 1, 2, 4, 170, 172, 4, 4, 32, 31, 35, 34, 4, 170, 172, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 4, 4, 204, 151, 152, 207, 15, 10, 12, 1, 1, 1, 1, 1, 9, 10, 10, 14, 4, 4, 4, 4, 178, 182, 182, 182, 182, 182,
  1, 1, 2, 4, 4, 4, 4, 4, 30, 43, 42, 33, 4, 4, 4, 4, 15, 10, 10, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 4, 4, 147, 148, 149, 205, 4, 4, 6, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 4, 178, 180, 202, 202, 202, 202, 202,
  1, 1, 2, 166, 98, 98, 101, 4, 21, 24, 25, 29, 4, 4, 4, 4, 179, 183, 185, 6, 1, 1, 1, 1, 1, 1, 9, 10, 10, 10, 10, 14, 4, 4, 144, 145, 146, 206, 4, 4, 15, 10, 10, 10, 10, 10, 14, 4, 4, 4, 4, 4, 4, 200, 202, 202, 202, 202, 202, 202,
  1, 1, 2, 48, 82, 79, 48, 4, 19, 23, 20, 26, 4, 4, 4, 179, 181, 203, 189, 6, 1, 1, 1, 1, 1, 1, 2, 4, 174, 175, 4, 178, 182, 182, 184, 48, 178, 182, 184, 4, 4, 4, 4, 174, 175, 4, 4, 4, 4, 4, 4, 4, 4, 200, 202, 202, 202, 202, 202, 202,
  1, 1, 2, 48, 82, 79, 99, 98, 98, 125, 4, 4, 78, 84, 4, 201, 203, 203, 189, 6, 1, 1, 1, 1, 1, 1, 2, 176, 171, 173, 177, 200, 202, 202, 188, 48, 200, 202, 188, 4, 4, 4, 176, 171, 173, 177, 4, 4, 4, 4, 4, 4, 4, 196, 198, 202, 202, 202, 202, 202,
  1, 1, 2, 48, 82, 71, 69, 69, 69, 69, 69, 69, 70, 84, 4, 197, 195, 195, 191, 6, 1, 1, 1, 1, 1, 1, 2, 4, 170, 172, 4, 196, 194, 194, 190, 48, 200, 192, 190, 218, 220, 4, 4, 170, 172, 4, 4, 4, 4, 4, 4, 4, 4, 4, 200, 202, 202, 202, 202, 202,
  1, 1, 2, 48, 82, 77, 75, 75, 75, 75, 75, 75, 75, 84, 4, 4, 4, 57, 44, 52, 17, 17, 17, 17, 17, 17, 111, 44, 44, 44, 44, 58, 4, 4, 4, 48, 196, 190, 4, 211, 209, 218, 219, 219, 219, 219, 219, 220, 4, 4, 4, 4, 4, 4, 196, 194, 198, 202, 202, 202,
  1, 1, 2, 48, 4, 83, 83, 83, 83, 83, 83, 83, 83, 174, 175, 4, 4, 67, 45, 53, 13, 13, 13, 13, 13, 13, 16, 45, 45, 45, 45, 67, 4, 4, 4, 48, 4, 4, 218, 219, 219, 215, 212, 212, 212, 212, 212, 216, 220, 4, 4, 4, 4, 4, 4, 4, 196, 194, 194, 194,
  1, 1, 2, 48, 4, 4, 4, 174, 175, 4, 4, 4, 176, 171, 173, 177, 4, 48, 4, 6, 1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 97, 98, 98, 98, 165, 98, 98, 217, 212, 212, 212, 212, 212, 212, 212, 212, 212, 216, 220, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 2, 48, 4, 4, 176, 171, 173, 177, 4, 4, 4, 170, 172, 4, 4, 48, 4, 6, 1, 1, 1, 1, 1, 1, 2, 4, 174, 175, 4, 48, 4, 4, 4, 4, 4, 4, 211, 210, 214, 212, 212, 212, 212, 212, 212, 212, 213, 209, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 2, 48, 4, 4, 4, 170, 172, 4, 4, 4, 4, 4, 4, 4, 4, 48, 4, 6, 1, 1, 1, 1, 1, 9, 14, 176, 171, 173, 177, 48, 4, 4, 4, 4, 174, 175, 4, 4, 211, 214, 212, 212, 212, 212, 212, 213, 209, 4, 4, 4, 48, 4, 142, 143, 141, 4, 4, 4,
  1, 1, 2, 99, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 125, 4, 6, 1, 1, 1, 1, 1, 2, 4, 4, 170, 172, 4, 48, 4, 4, 4, 176, 171, 173, 177, 4, 4, 211, 210, 210, 210, 210, 210, 209, 4, 4, 4, 4, 48, 140, 139, 136, 137, 138, 4, 4,
  1, 1, 3, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 5, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 48, 4, 4, 4, 4, 170, 172, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 79, 48, 134, 133, 135, 132, 131, 78, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 48, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 11, 11, 11, 11, 11, 11, 11, 11, 7, 79, 48, 126, 130, 129, 130, 127, 78, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 4, 174, 175, 4, 4, 48, 4, 174, 175, 4, 179, 183, 185, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 2, 79, 48, 122, 121, 124, 121, 123, 78, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 176, 171, 173, 177, 4, 48, 176, 171, 173, 177, 201, 203, 189, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 2, 79, 99, 98, 98, 125, 4, 4, 78, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 14, 4, 170, 172, 4, 4, 48, 4, 170, 172, 4, 197, 195, 191, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 2, 71, 69, 69, 69, 69, 69, 69, 70, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 161, 17, 17, 17, 17, 160, 1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 4, 48, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 2, 74, 72, 72, 72, 72, 72, 72, 73, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 157, 157, 157, 157, 157, 156, 1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 4, 48, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 2, 74, 72, 72, 72, 72, 72, 72, 73, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 157, 157, 157, 157, 157, 153, 17, 17, 17, 17, 17, 17, 111, 44, 44, 44, 44, 44, 44, 46, 4, 4, 8, 11, 11, 11, 11, 11, 11, 5, 1, 1, 1, 1, 1, 1, 1, 1, 2, 77, 75, 75, 75, 75, 75, 75, 76, 84,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 157, 157, 157, 157, 157, 155, 13, 13, 13, 13, 13, 13, 16, 45, 45, 45, 45, 45, 45, 47, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 83, 83, 83, 83, 83, 83, 83, 83, 4,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 163, 13, 13, 13, 13, 162, 1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 11, 11, 11, 11, 11, 11, 11, 11, 11, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4

}

end

function Map:rendercave()
  x = 0
  y = 0
  for i = 1, #CAVE do
      if i % 27 == 0 then
        love.graphics.draw(gTextures['tileset'], gFrames['tiles'][CAVE[i]],x,y)
        y = y + 16
        x = 0

      else
          love.graphics.draw(gTextures['tileset'], gFrames['tiles'][CAVE[i]],x,y)
          x = x + 16

      end
  end
end

function Map:collidesleftcave(x,y)
  local tileTopLeftX = x + 10
  local tileTopLeftY = y + 5
  local tileBottomLeftX = x + 10
  local tileBottomLeftY = y + 32 - 5

  local tileTopLeft = CAVE[((math.floor((tileTopLeftX/TILE_SIZE) +1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH + 1) - 1)]
  local tileBottomLeft = CAVE[((math.floor((tileBottomLeftX/TILE_SIZE) +1))+(math.floor(tileBottomLeftY/TILE_SIZE) * MAP_WIDTH + 1) - 1)]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if   --[[tileTopLeft == tileBottomLeft or]] tileBottomLeft == COLLIDABLE_TILES[i]  then
      return true
    end
  end
end

function Map:collidesrightcave(x,y)
  local tileTopRightX = x + 32 + 10
  local tileTopRightY = y + 5
  local tileBottomRightX = x + 32 + 10
  local tileBottomRightY = y + 32 - 5

  local tileTopRight = CAVE[(math.floor((tileTopRightX/TILE_SIZE)))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH)]
  local tileBottomRight = CAVE[(math.floor((tileBottomRightX/TILE_SIZE)))+(math.floor(tileBottomRightY/TILE_SIZE) * MAP_WIDTH)]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if --[[tileTopRight == tileBottomRight and]] tileBottomRight == COLLIDABLE_TILES[i]  then
      return true
    end
  end
end

function Map:collidesupwardcave(x,y)
  local tileTopRightX = x + 32 - 1
  local tileTopRightY = y + 1
  local tileTopLeftX = x + 1
  local tileTopLeftY = y + 1

  local tileTopLeft = CAVE[((math.floor((tileTopRightX/TILE_SIZE) + 1))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH + 1)) + 60]
  local tileTopRight = CAVE[((math.floor((tileTopLeftX/TILE_SIZE) + 1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH + 1)) + 60]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if --[[tileTopLeft == COLLIDABLE_TILES[i] and]] tileTopRight == COLLIDABLE_TILES[i]  then
      return true
    end
  end
end

function Map:collidesdownwardcave(x,y)
  local tileBottomRightX = x + 32 - 5
  local tileBottomRightY = y + 32 - 5
  local tileBottomLeftX = x + 5
  local tileBottomLeftY = y + 32 - 5

  local tileBottomLeft = CAVE[((math.floor((tileBottomRightX/TILE_SIZE)))+(math.floor(tileBottomRightY/TILE_SIZE) * MAP_WIDTH))]
  local tileBottomRight = CAVE[((math.floor((tileBottomLeftX/TILE_SIZE)))+(math.floor(tileBottomLeftY/TILE_SIZE) * MAP_WIDTH))]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if tileBottomLeft == COLLIDABLE_TILES[i] --[[and tileBottomRight == COLLIDABLE_TILES[i] ]] then
      return true
    end
  end
end
function Map:collidescavecave(x,y)
  local tileTopRightX = x + 32 - 1
  local tileTopRightY = y + 1
  local tileTopLeftX = x + 1
  local tileTopLeftY = y + 1

  local tileTopLeft = CAVE[((math.floor((tileTopRightX/TILE_SIZE)+1))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH)+1)+60]
  local tileTopRight = CAVE[((math.floor((tileTopLeftX/TILE_SIZE)+1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH)+1)+60]

  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
    return nil
  end
  for i = 1, #CAVETILES do
    if tileTopLeft == CAVETILES[i] or tileTopRight == CAVETILES[i] then

      return true
    end
  end
end
function Map:collideshousecave(x,y)
  local tileTopRightX = x + 32 - 1
  local tileTopRightY = y + 1
  local tileTopLeftX = x + 1
  local tileTopLeftY = y + 1

  local tileTopLeft = CAVE[((math.floor((tileTopRightX/TILE_SIZE)+1))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH)+1)+60]
  local tileTopRight = CAVE[((math.floor((tileTopLeftX/TILE_SIZE)+1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH)+1)+60]

  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
    return nil
  end
  for i = 1, #HOUSETILES do
    if tileTopLeft == HOUSETILES[i] or tileTopRight == HOUSETILES[i] then

      return true
    end
  end
end
function Map:renderoverworld()
  x = 0
  y = 0
  for i = 1, #MAP do
      if i % 60 == 0 then
        love.graphics.draw(gTextures['tileset'], gFrames['tiles'][MAP[i]],x,y)
        y = y + 16
        x = 0

      else
          love.graphics.draw(gTextures['tileset'], gFrames['tiles'][MAP[i]],x,y)
          x = x + 16

      end
  end
end
--collisions in the overworld
function Map:collidesleftoverworld(x,y)
  local tileTopLeftX = x + 10
  local tileTopLeftY = y + 5
  local tileBottomLeftX = x + 10
  local tileBottomLeftY = y + 32 - 5

  local tileTopLeft = MAP[((math.floor((tileTopLeftX/TILE_SIZE) +1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH + 1) - 1)]
  local tileBottomLeft = MAP[((math.floor((tileBottomLeftX/TILE_SIZE) +1))+(math.floor(tileBottomLeftY/TILE_SIZE) * MAP_WIDTH + 1) - 1)]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if   --[[tileTopLeft == tileBottomLeft or]] tileBottomLeft == COLLIDABLE_TILES[i]  then
      return true
    end
  end
end

function Map:collidesrightoverworld(x,y)
  local tileTopRightX = x + 32 + 10
  local tileTopRightY = y + 5
  local tileBottomRightX = x + 32 + 10
  local tileBottomRightY = y + 32 - 5

  local tileTopRight = MAP[(math.floor((tileTopRightX/TILE_SIZE)))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH)]
  local tileBottomRight = MAP[(math.floor((tileBottomRightX/TILE_SIZE)))+(math.floor(tileBottomRightY/TILE_SIZE) * MAP_WIDTH)]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if --[[tileTopRight == tileBottomRight and]] tileBottomRight == COLLIDABLE_TILES[i]  then
      return true
    end
  end
end

function Map:collidesupwardoverworld(x,y)
  local tileTopRightX = x + 32 - 1
  local tileTopRightY = y + 1
  local tileTopLeftX = x + 1
  local tileTopLeftY = y + 1

  local tileTopLeft = MAP[((math.floor((tileTopRightX/TILE_SIZE) + 1))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH + 1)) + 60]
  local tileTopRight = MAP[((math.floor((tileTopLeftX/TILE_SIZE) + 1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH + 1)) + 60]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if --[[tileTopLeft == COLLIDABLE_TILES[i] and]] tileTopRight == COLLIDABLE_TILES[i]  then
      return true
    end
  end
end

function Map:collidesdownwardoverworld(x,y)
  local tileBottomRightX = x + 32 - 5
  local tileBottomRightY = y + 32 - 5
  local tileBottomLeftX = x + 5
  local tileBottomLeftY = y + 32 - 5

  local tileBottomLeft = MAP[((math.floor((tileBottomRightX/TILE_SIZE)))+(math.floor(tileBottomRightY/TILE_SIZE) * MAP_WIDTH))]
  local tileBottomRight = MAP[((math.floor((tileBottomLeftX/TILE_SIZE)))+(math.floor(tileBottomLeftY/TILE_SIZE) * MAP_WIDTH))]


  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
      return nil
  end
  for i = 1, #COLLIDABLE_TILES do
    if tileBottomLeft == COLLIDABLE_TILES[i] --[[and tileBottomRight == COLLIDABLE_TILES[i] ]] then
      return true
    end
  end
end
--collides cave
function Map:collidescaveoverworld(x,y)
  local tileTopRightX = x + 32 - 1
  local tileTopRightY = y + 1
  local tileTopLeftX = x + 1
  local tileTopLeftY = y + 1

  local tileTopLeft = MAP[((math.floor((tileTopRightX/TILE_SIZE)+1))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH)+1)+60]
  local tileTopRight = MAP[((math.floor((tileTopLeftX/TILE_SIZE)+1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH)+1)+60]

  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
    return nil
  end
  for i = 1, #CAVETILES do
    if tileTopLeft == CAVETILES[i] or tileTopRight == CAVETILES[i] then

      return true
    end
  end
end

--collides house
function Map:collideshouseoverworld(x,y)
  local tileTopRightX = x + 32 - 1
  local tileTopRightY = y + 1
  local tileTopLeftX = x + 1
  local tileTopLeftY = y + 1

  local tileTopLeft = MAP[((math.floor((tileTopRightX/TILE_SIZE)+1))+(math.floor(tileTopRightY/TILE_SIZE) * MAP_WIDTH)+1)+60]
  local tileTopRight = MAP[((math.floor((tileTopLeftX/TILE_SIZE)+1))+(math.floor(tileTopLeftY/TILE_SIZE) * MAP_WIDTH)+1)+60]

  if x < 0 or x > MAP_WIDTH * TILE_SIZE or y < 0 or y > MAP_HEIGHT * TILE_SIZE then
    return nil
  end
  for i = 1, #HOUSETILES do
    if tileTopLeft == HOUSETILES[i] or tileTopRight == HOUSETILES[i] then

      return true
    end
  end
end
