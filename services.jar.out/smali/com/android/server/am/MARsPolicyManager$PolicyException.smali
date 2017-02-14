.class public Lcom/android/server/am/MARsPolicyManager$PolicyException;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PolicyException"
.end annotation


# static fields
.field public static final POLICY_EXCEPTION_POLICY1:I = 0x1

.field public static final POLICY_EXCEPTION_POLICY2:I = 0x2

.field public static final POLICY_EXCEPTION_POLICY3:I = 0x4

.field public static final POLICY_EXCEPTION_POLICY4:I = 0x8


# instance fields
.field public exception:I

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PolicyException;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
