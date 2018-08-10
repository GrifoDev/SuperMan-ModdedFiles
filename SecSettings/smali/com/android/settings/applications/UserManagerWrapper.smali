.class public interface abstract Lcom/android/settings/applications/UserManagerWrapper;
.super Ljava/lang/Object;
.source "UserManagerWrapper.java"


# virtual methods
.method public abstract getPrimaryUser()Landroid/content/pm/UserInfo;
.end method

.method public abstract getUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method
