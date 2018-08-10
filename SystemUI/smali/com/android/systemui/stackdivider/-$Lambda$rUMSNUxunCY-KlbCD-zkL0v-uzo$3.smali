.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f0:Z

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f1:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f3:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->lambda$-com_android_systemui_stackdivider_Divider$MultiWindowEventListener_11940(ZZLandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f1:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$3;->$m$0()V

    return-void
.end method
