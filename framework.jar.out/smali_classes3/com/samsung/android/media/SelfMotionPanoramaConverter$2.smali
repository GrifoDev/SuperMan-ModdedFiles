.class Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SelfMotionPanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

.field final synthetic val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;->this$0:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    iput-object p2, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;->val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;->this$0:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;->val$info:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-wrap1(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    return-void
.end method
