.class Lsun/security/ssl/Handshaker$1;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/ssl/Handshaker;


# direct methods
.method constructor <init>(Lsun/security/ssl/Handshaker;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/Handshaker$1;->this$0:Lsun/security/ssl/Handshaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/Handshaker$1;->this$0:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->processLoop()V

    const/4 v0, 0x0

    return-object v0
.end method
