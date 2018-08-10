.class public Landroid/security/KeyChain$KeyChainConnection;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/security/IKeyChainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyChain$KeyChainConnection;->context:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/KeyChain$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object p3, p0, Landroid/security/KeyChain$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/KeyChain$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-object v0
.end method
