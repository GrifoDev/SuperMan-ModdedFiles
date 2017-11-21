.class final Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckPasswordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->handleNext()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    return-void
.end method

.method private handleNext()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volumelimit_secure_password"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volumelimit_set_password"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volumelimit_secure_password"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setCheckedPW(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b14d2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public showCheckPasswordDialog()V
    .locals 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04006a

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1101a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$1;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const v2, 0x7f1101a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const v2, 0x7f1101a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const v2, 0x7f1101a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b14be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
