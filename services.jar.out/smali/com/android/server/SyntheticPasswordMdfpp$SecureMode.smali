.class public Lcom/android/server/SyntheticPasswordMdfpp$SecureMode;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SyntheticPasswordMdfpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecureMode"
.end annotation


# static fields
.field public static final LATEST:I = 0x1

.field public static final MDFPP_V1:I = 0x1

.field public static final NONE:I = -0x1

.field public static final ORIGINAL:I


# instance fields
.field final synthetic this$0:Lcom/android/server/SyntheticPasswordMdfpp;


# direct methods
.method public constructor <init>(Lcom/android/server/SyntheticPasswordMdfpp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SyntheticPasswordMdfpp$SecureMode;->this$0:Lcom/android/server/SyntheticPasswordMdfpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
