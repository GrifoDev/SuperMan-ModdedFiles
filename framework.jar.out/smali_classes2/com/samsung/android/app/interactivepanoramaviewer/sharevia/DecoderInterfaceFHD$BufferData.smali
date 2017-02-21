.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
.super Ljava/lang/Object;
.source "DecoderInterfaceFHD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferData"
.end annotation


# instance fields
.field public bDirty:Z

.field public mAffineData:[F

.field public mBuffer:[B

.field public mRenderedFrameIdx:I

.field final synthetic this$0:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->this$0:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
