.class Lcom/android/settings/bluetooth/DockService$1;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$1;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$1;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DockService;->-get1(Lcom/android/settings/bluetooth/DockService;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    return-void
.end method
