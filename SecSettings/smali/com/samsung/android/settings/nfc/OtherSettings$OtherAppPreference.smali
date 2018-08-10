.class public Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

.field private isTrusted:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final longListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d01b0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    const-string/jumbo v0, "SIM"

    iget-object v1, p3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/nfc/NfcAdapter;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->isTrusted:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :cond_0
    const v8, 0x7f0a00cb

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v8, 0x7f0a05bf

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v8, 0x7f0a08f5

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->isTrusted:Z

    if-eqz v8, :cond_5

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    if-eqz v4, :cond_4

    const v8, 0x7f0a05be

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v8, 0x7f0a05c0

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0xcc

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1
.end method
