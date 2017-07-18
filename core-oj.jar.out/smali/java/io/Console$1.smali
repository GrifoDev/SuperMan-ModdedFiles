.class Ljava/io/Console$1;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/Console;


# direct methods
.method constructor <init>(Ljava/io/Console;Ljava/io/Writer;Z)V
    .locals 0

    iput-object p1, p0, Ljava/io/Console$1;->this$0:Ljava/io/Console;

    invoke-direct {p0, p2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
