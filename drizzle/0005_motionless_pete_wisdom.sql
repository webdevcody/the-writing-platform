CREATE TABLE "app_notification" (
	"id" serial PRIMARY KEY NOT NULL,
	"userId" integer NOT NULL,
	"commentId" integer NOT NULL,
	"isRead" boolean DEFAULT false NOT NULL,
	"icon" text DEFAULT 'comment' NOT NULL,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "app_comment" ALTER COLUMN "content" SET DEFAULT '';--> statement-breakpoint
ALTER TABLE "app_notification" ADD CONSTRAINT "app_notification_userId_app_user_id_fk" FOREIGN KEY ("userId") REFERENCES "public"."app_user"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "app_notification" ADD CONSTRAINT "app_notification_commentId_app_comment_id_fk" FOREIGN KEY ("commentId") REFERENCES "public"."app_comment"("id") ON DELETE cascade ON UPDATE no action;