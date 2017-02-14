.class Lcom/samsung/android/settings/OtherSecuritySettings$4;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/OtherSecuritySettings;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$4;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings$4;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-wrap0(Lcom/samsung/android/settings/OtherSecuritySettings;Z)V

    return-void
.end method
