.class Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldInfo"
.end annotation


# instance fields
.field final definedIn:Ljava/lang/Class;

.field final fieldName:Ljava/lang/String;

.field final type:Ljava/lang/Class;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->type:Ljava/lang/Class;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    return-void
.end method
