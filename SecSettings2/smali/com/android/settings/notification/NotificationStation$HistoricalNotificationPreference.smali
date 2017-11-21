.class Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;
.super Lcom/android/settings/CopyablePreference;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/CopyablePreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0401a3

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/CopyablePreference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const v1, 0x7f1100e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const v1, 0x7f1104cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x7f1104ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    const v1, 0x7f1100e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1104cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1104d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;-><init>(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public onClick()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v2, "package"

    iget-object v3, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
