.class final synthetic Lcom/android/systemui/qs/QSPanel$1$-void_onAnnouncementRequested_java_lang_CharSequence_announcement_LambdaImpl0;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onAnnouncementRequested_java_lang_CharSequence_announcement_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$announcement:Ljava/lang/CharSequence;

.field private synthetic val$this:Lcom/android/systemui/qs/QSPanel$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel$1;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1$-void_onAnnouncementRequested_java_lang_CharSequence_announcement_LambdaImpl0;->val$this:Lcom/android/systemui/qs/QSPanel$1;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$1$-void_onAnnouncementRequested_java_lang_CharSequence_announcement_LambdaImpl0;->val$announcement:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1$-void_onAnnouncementRequested_java_lang_CharSequence_announcement_LambdaImpl0;->val$this:Lcom/android/systemui/qs/QSPanel$1;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1$-void_onAnnouncementRequested_java_lang_CharSequence_announcement_LambdaImpl0;->val$announcement:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel$1;->-com_android_systemui_qs_QSPanel$1_lambda$1(Ljava/lang/CharSequence;)V

    return-void
.end method
