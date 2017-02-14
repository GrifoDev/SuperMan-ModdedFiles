.class abstract Lsun/security/ssl/HelloExtension;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# instance fields
.field final type:Lsun/security/ssl/ExtensionType;


# direct methods
.method constructor <init>(Lsun/security/ssl/ExtensionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    return-void
.end method


# virtual methods
.method abstract length()I
.end method

.method abstract send(Lsun/security/ssl/HandshakeOutStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
