.class public Lcom/samsung/android/smartface/FaceInfo$FaceExpression;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceExpression"
.end annotation


# static fields
.field public static final FACIAL_EXPRESSION_ANGER:I = 0x8

.field public static final FACIAL_EXPRESSION_DISGUST:I = 0x4

.field public static final FACIAL_EXPRESSION_FEAR:I = 0x20

.field public static final FACIAL_EXPRESSION_JOY:I = 0x2

.field public static final FACIAL_EXPRESSION_NONE:I = 0x1

.field public static final FACIAL_EXPRESSION_SADNESS:I = 0x40

.field public static final FACIAL_EXPRESSION_SURPRISE:I = 0x10


# instance fields
.field public expression:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
