.class Lmf/javax/xml/xpath/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/xpath/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/xpath/SecuritySupport;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/xpath/SecuritySupport$3;->this$0:Lmf/javax/xml/xpath/SecuritySupport;

    iput-object p2, p0, Lmf/javax/xml/xpath/SecuritySupport$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmf/javax/xml/xpath/SecuritySupport$3;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
