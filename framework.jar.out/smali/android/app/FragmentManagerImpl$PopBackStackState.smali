.class Landroid/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/FragmentManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iput p3, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iput p4, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v6, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v5, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
