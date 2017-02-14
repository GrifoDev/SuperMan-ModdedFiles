.class Lmf/javax/xml/parsers/SecuritySupport$4;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/parsers/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/parsers/SecuritySupport;

.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmf/javax/xml/parsers/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->this$0:Lmf/javax/xml/parsers/SecuritySupport;

    iput-object p2, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->val$cl:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->val$cl:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lmf/javax/xml/parsers/SecuritySupport$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
