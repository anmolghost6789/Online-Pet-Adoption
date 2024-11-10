package com.example.petadoption;

public class FavoriteServiceImpl implements FavoriteService {
    private final FavoriteDao favoriteDao;

    public FavoriteServiceImpl(FavoriteDao favoriteDao) {
        this.favoriteDao = favoriteDao;
    }

    @Override
    public void saveFavorite(Favorite favorite) {
        favoriteDao.saveFavorite(favorite);
    }
}
