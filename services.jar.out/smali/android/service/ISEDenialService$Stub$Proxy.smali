.class Landroid/service/ISEDenialService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISEDenialService.java"

# interfaces
.implements Landroid/service/ISEDenialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ISEDenialService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ISEDenialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/ISEDenialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "android.service.ISEDenialService"

    return-object v0
.end method
