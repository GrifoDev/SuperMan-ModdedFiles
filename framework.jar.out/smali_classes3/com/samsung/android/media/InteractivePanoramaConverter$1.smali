.class Lcom/samsung/android/media/InteractivePanoramaConverter$1;
.super Ljava/lang/Object;
.source "InteractivePanoramaConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/InteractivePanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/InteractivePanoramaConverter;

.field final synthetic val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

.field final synthetic val$targetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/InteractivePanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/InteractivePanoramaConverter$1;->this$0:Lcom/samsung/android/media/InteractivePanoramaConverter;

    iput-object p2, p0, Lcom/samsung/android/media/InteractivePanoramaConverter$1;->val$targetPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/media/InteractivePanoramaConverter$1;->val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/InteractivePanoramaConverter$1;->this$0:Lcom/samsung/android/media/InteractivePanoramaConverter;

    iget-object v1, p0, Lcom/samsung/android/media/InteractivePanoramaConverter$1;->val$targetPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/media/InteractivePanoramaConverter$1;->val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/InteractivePanoramaConverter;->-wrap0(Lcom/samsung/android/media/InteractivePanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;)V

    return-void
.end method
