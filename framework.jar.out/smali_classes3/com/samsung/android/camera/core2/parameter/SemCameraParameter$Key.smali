.class public Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
.super Ljava/lang/Object;
.source "SemCameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;->mKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;->mKey:Ljava/lang/String;

    return-object v0
.end method
