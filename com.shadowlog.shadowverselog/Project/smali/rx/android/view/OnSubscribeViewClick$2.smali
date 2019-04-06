.class Lrx/android/view/OnSubscribeViewClick$2;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/OnSubscribeViewClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/view/OnSubscribeViewClick;

.field final synthetic val$composite:Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lrx/android/view/OnSubscribeViewClick;Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/view/OnSubscribeViewClick;

    .prologue
    .line 50
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewClick$2;->this$0:Lrx/android/view/OnSubscribeViewClick;

    iput-object p2, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$composite:Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    iput-object p3, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$composite:Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    iget-object v1, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->removeOnClickListener(Landroid/view/View$OnClickListener;)Z

    .line 54
    return-void
.end method
