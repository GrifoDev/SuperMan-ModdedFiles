.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Cover;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cover"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;,
        Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;,
        Lcom/google/android/gms/plus/model/people/Person$Cover$Layout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Cover;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCoverInfo()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;
.end method

.method public abstract getCoverPhoto()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
.end method

.method public abstract getLayout()I
.end method

.method public abstract hasCoverInfo()Z
.end method

.method public abstract hasCoverPhoto()Z
.end method

.method public abstract hasLayout()Z
.end method
