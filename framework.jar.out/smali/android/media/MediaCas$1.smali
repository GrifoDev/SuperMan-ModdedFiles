.class final Landroid/media/MediaCas$1;
.super Landroid/util/Singleton;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Landroid/media/IMediaCasService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/media/IMediaCasService;
    .locals 1

    const-string/jumbo v0, "media.cas"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaCasService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCasService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCas$1;->create()Landroid/media/IMediaCasService;

    move-result-object v0

    return-object v0
.end method
