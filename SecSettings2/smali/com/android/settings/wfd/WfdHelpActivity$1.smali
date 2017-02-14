.class Lcom/android/settings/wfd/WfdHelpActivity$1;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WfdHelpActivity$1;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$1;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-static {v0, p2}, Lcom/android/settings/wfd/WfdHelpActivity;->-set0(Lcom/android/settings/wfd/WfdHelpActivity;Z)Z

    return-void
.end method
