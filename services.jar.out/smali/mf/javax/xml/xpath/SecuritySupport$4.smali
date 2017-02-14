.class Lmf/javax/xml/xpath/SecuritySupport$4;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/xpath/SecuritySupport;->getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/xpath/SecuritySupport;

.field private final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/xpath/SecuritySupport$4;->this$0:Lmf/javax/xml/xpath/SecuritySupport;

    iput-object p2, p0, Lmf/javax/xml/xpath/SecuritySupport$4;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/xpath/SecuritySupport$4;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
