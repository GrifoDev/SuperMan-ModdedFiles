.class public interface abstract Landroid/content/pm/split/SplitAssetLoader;
.super Ljava/lang/Object;
.source "SplitAssetLoader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract getBaseAssetManager()Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation
.end method

.method public abstract getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation
.end method
