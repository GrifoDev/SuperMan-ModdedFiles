.class public Landroid/support/v17/leanback/util/StateMachine$Condition;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Condition;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canProceed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
