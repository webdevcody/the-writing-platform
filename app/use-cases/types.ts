export type Plan = "free" | "basic" | "premium";
export type Role = "owner" | "admin" | "member";

export type UserId = number;

export type UserProfile = {
  id: UserId;
  name: string | null;
  image: string | null;
};

export type UserSession = {
  id: UserId;
};

export type MemberInfo = {
  name: string | null;
  userId: UserId;
  image: string | null;
  role: Role;
};

export interface GoogleUser {
  sub: string;
  name: string;
  given_name: string;
  family_name: string;
  picture: string;
  email: string;
  email_verified: boolean;
  locale: string;
}
