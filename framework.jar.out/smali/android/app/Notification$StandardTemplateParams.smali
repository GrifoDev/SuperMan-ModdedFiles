.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# instance fields
.field ambient:Z

.field hasProgress:Z

.field text:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final ambient(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "must set ambient before text"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    return-object p0
.end method

.method final fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .locals 3

    invoke-static {p1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-static {p1, v1, v2}, Landroid/app/Notification$Builder;->-wrap14(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const-string/jumbo v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-static {p1, v1, v2}, Landroid/app/Notification$Builder;->-wrap14(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    return-object p0
.end method

.method final reset()Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
