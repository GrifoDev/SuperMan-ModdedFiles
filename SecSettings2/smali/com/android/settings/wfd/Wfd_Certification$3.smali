.class Lcom/android/settings/wfd/Wfd_Certification$3;
.super Landroid/preference/CheckBoxPreference;
.source "Wfd_Certification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/Wfd_Certification;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get0(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/wfd/Wfd_Certification;->-set0(Lcom/android/settings/wfd/Wfd_Certification;Z)Z

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get0(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-wrap2(Lcom/android/settings/wfd/Wfd_Certification;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get0(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/Wfd_Certification$3;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-wrap3(Lcom/android/settings/wfd/Wfd_Certification;)V

    goto :goto_1
.end method
