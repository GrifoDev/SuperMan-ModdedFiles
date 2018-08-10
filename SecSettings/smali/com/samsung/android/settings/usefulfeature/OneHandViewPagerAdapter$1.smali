.class Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "OneHandViewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

.field final synthetic val$ani:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;->this$0:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
