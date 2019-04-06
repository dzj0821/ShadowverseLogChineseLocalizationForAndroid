.class Lrx/android/view/OnSubscribeViewClick$1;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/view/OnSubscribeViewClick;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/view/OnSubscribeViewClick;

    .prologue
    .line 43
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewClick$1;->this$0:Lrx/android/view/OnSubscribeViewClick;

    iput-object p2, p0, Lrx/android/view/OnSubscribeViewClick$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "clicked"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$1;->val$observer:Lrx/Subscriber;

    iget-object v1, p0, Lrx/android/view/OnSubscribeViewClick$1;->this$0:Lrx/android/view/OnSubscribeViewClick;

    invoke-static {v1}, Lrx/android/view/OnSubscribeViewClick;->access$000(Lrx/android/view/OnSubscribeViewClick;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lrx/android/view/OnClickEvent;->create(Landroid/view/View;)Lrx/android/view/OnClickEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
