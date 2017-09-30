.class public final Lcom/google/android/gms/b/ap$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/ap;
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/b/ap;

    move v2, v1

    move v4, v1

    move-object v5, v3

    move v6, v1

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/ap;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/b/ap$1;)V

    return-object v0
.end method
