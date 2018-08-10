.class Landroid/os/ShellCallback$MyShellCallback;
.super Lcom/android/internal/os/IShellCallback$Stub;
.source "ShellCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ShellCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyShellCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/ShellCallback;


# direct methods
.method constructor <init>(Landroid/os/ShellCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/os/ShellCallback$MyShellCallback;->this$0:Landroid/os/ShellCallback;

    invoke-direct {p0}, Lcom/android/internal/os/IShellCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public openOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/ShellCallback$MyShellCallback;->this$0:Landroid/os/ShellCallback;

    invoke-virtual {v0, p1, p2}, Landroid/os/ShellCallback;->onOpenOutputFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
