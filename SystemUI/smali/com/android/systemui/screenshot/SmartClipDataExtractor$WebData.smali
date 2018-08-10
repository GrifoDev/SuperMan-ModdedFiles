.class public Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
.super Ljava/lang/Object;
.source "SmartClipDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/SmartClipDataExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebData"
.end annotation


# instance fields
.field public mAppPkgName:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    return-void
.end method
