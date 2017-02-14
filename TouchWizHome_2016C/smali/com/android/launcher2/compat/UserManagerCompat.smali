.class public abstract Lcom/android/launcher2/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/compat/UserManagerCompatVL;

    invoke-direct {v0, p0}, Lcom/android/launcher2/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/android/launcher2/compat/UserManagerCompatV17;

    invoke-direct {v0, p0}, Lcom/android/launcher2/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher2/compat/UserManagerCompatV16;

    invoke-direct {v0}, Lcom/android/launcher2/compat/UserManagerCompatV16;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/CharSequence;
.end method

.method public abstract getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J
.end method

.method public abstract getUserCreationTime(Lcom/android/launcher2/compat/UserHandleCompat;)J
.end method

.method public abstract getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;
.end method

.method public abstract getUserProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end method
