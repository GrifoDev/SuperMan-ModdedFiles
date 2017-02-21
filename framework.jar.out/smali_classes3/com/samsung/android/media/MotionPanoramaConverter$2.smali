.class Lcom/samsung/android/media/MotionPanoramaConverter$2;
.super Ljava/lang/Object;
.source "MotionPanoramaConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/MotionPanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/MotionPanoramaConverter;

.field final synthetic val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/MotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/MotionPanoramaConverter$2;->this$0:Lcom/samsung/android/media/MotionPanoramaConverter;

    iput-object p2, p0, Lcom/samsung/android/media/MotionPanoramaConverter$2;->val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter$2;->this$0:Lcom/samsung/android/media/MotionPanoramaConverter;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter$2;->val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/media/MotionPanoramaConverter;->-wrap1(Lcom/samsung/android/media/MotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    return-void
.end method
