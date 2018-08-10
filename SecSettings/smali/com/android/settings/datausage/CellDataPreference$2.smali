.class Lcom/android/settings/datausage/CellDataPreference$2;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/CellDataPreference;->showEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$2;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$2;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/CellDataPreference;->-wrap1(Lcom/android/settings/datausage/CellDataPreference;Z)V

    return-void
.end method
